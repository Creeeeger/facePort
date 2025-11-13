.class public abstract Lcom/samsung/android/gtscell/GtsCellProvider;
.super Landroid/content/ContentProvider;
.source "GtsCellProvider.kt"

# interfaces
.implements Lcom/samsung/android/gtscell/GtsCellItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;,
        Lcom/samsung/android/gtscell/GtsCellProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsCellProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsCellProvider.kt\ncom/samsung/android/gtscell/GtsCellProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 GtsItemSupplierGroup.kt\ncom/samsung/android/gtscell/data/GtsItemSupplierGroup\n+ 4 GtsCellProvider.kt\ncom/samsung/android/gtscell/GtsCellProvider$GtsItemSender\n*L\n1#1,438:1\n1648#2:439\n1418#2,9:441\n1648#2:450\n1649#2:456\n1427#2:457\n1649#2:458\n1648#2:459\n1418#2,9:461\n1648#2:470\n1649#2:476\n1427#2:477\n1649#2:478\n1648#2:481\n1649#2:484\n1648#2:486\n1648#2,2:487\n1649#2:489\n1648#2,2:490\n17#3:440\n18#3,5:451\n35#3:460\n36#3,5:471\n432#4,2:479\n434#4,2:482\n436#4:485\n*E\n*S KotlinDebug\n*F\n+ 1 GtsCellProvider.kt\ncom/samsung/android/gtscell/GtsCellProvider\n*L\n147#1:439\n147#1,9:441\n147#1:450\n147#1:456\n147#1:457\n147#1:458\n182#1:459\n182#1,9:461\n182#1:470\n182#1:476\n182#1:477\n182#1:478\n230#1:481\n230#1:484\n320#1:486\n320#1,2:487\n320#1:489\n330#1,2:490\n147#1:440\n147#1,5:451\n182#1:460\n182#1,5:471\n230#1,2:479\n230#1,2:482\n230#1:485\n*E\n"
.end annotation


# static fields
.field public static final ACTION_GTS_CELL:Ljava/lang/String; = "com.samsung.android.gts.action.GTS_CELL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_GTS_SETTINGS:Ljava/lang/String; = "com.samsung.android.gts.action.GTS_SETTINGS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CATEGORY_AOD:Ljava/lang/String; = "com.samsung.android.gts.category.AOD"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CATEGORY_COVER_SCREEN:Ljava/lang/String; = "com.samsung.android.gts.category.COVER_SCREEN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "com.samsung.android.gts.category.DEFAULT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CATEGORY_HOME_SCREEN:Ljava/lang/String; = "com.samsung.android.gts.category.HOME_SCREEN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CATEGORY_LOCK_SCREEN:Ljava/lang/String; = "com.samsung.android.gts.category.LOCK_SCREEN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CATEGORY_SETTINGS:Ljava/lang/String; = "com.samsung.android.gts.category.SETTINGS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/gtscell/GtsCellProvider$Companion;

.field public static final EXTRA_ENLARGEABLE_THUMBNAIL_SIZE:Ljava/lang/String; = "enlargeable_thumbnail_size"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_FINISH_CALLBACK:Ljava/lang/String; = "finish_callback"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_GTS_ACTION:Ljava/lang/String; = "gts_action"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_GTS_CELL_CONFIG:Ljava/lang/String; = "gts_cell_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_GTS_CELL_RESULT:Ljava/lang/String; = "gts_cell_result"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_GTS_CELL_URIS:Ljava/lang/String; = "gts_cell_uris"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_GTS_CELL_VERSION:Ljava/lang/String; = "gts_cell_version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_GTS_EXPRESSION_CELL:Ljava/lang/String; = "gts_expression_cell"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_GTS_ITEM_CELL:Ljava/lang/String; = "gts_item_cell"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_GTS_ITEM_KEYS:Ljava/lang/String; = "gts_item_keys"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_TARGET_CATEGORY:Ljava/lang/String; = "target_category"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_THUMBNAIL_SIZE:Ljava/lang/String; = "thumbnail_size"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_TIMEOUT:Ljava/lang/String; = "timeout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GTS_CLIENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.gts"

.field public static final METADATA_GTS_CELL_VERSION:Ljava/lang/String; = "com.samsung.android.gtscell.VERSION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METADATA_MIN_REVISION:Ljava/lang/String; = "com.samsung.android.gts.MIN_REVISION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METHOD_GET_DONE:Ljava/lang/String; = "get_done"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METHOD_GET_EXPRESSION:Ljava/lang/String; = "get_expression"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METHOD_GET_ITEM:Ljava/lang/String; = "get_item"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METHOD_SET_ITEM:Ljava/lang/String; = "set_item"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VAL_ACTION_BACKUP:I = 0x2

.field public static final VAL_ACTION_SHARE:I = 0x1

.field private static final VAL_TIMEOUT:J = 0x2710L


# instance fields
.field private final config$delegate:Lkotlin/Lazy;

.field private final gtsCellVersion$delegate:Lkotlin/Lazy;

.field private providerInfo:Landroid/content/pm/ProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/GtsCellProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/GtsCellProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/GtsCellProvider;->Companion:Lcom/samsung/android/gtscell/GtsCellProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 71
    new-instance v0, Lcom/samsung/android/gtscell/GtsCellProvider$config$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$config$2;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->config$delegate:Lkotlin/Lazy;

    .line 75
    new-instance v0, Lcom/samsung/android/gtscell/GtsCellProvider$gtsCellVersion$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$gtsCellVersion$2;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->gtsCellVersion$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final checkAction(Lcom/samsung/android/gtscell/data/GtsItemSupplier;I)Z
    .locals 0
    .param p1    # Lcom/samsung/android/gtscell/data/GtsItemSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getCanBackup()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getCanShare()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final getConfig()Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->config$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/data/GtsConfiguration;

    return-object p0
.end method

.method private final getGtsCellProviderInfo()Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;
    .locals 6

    .line 340
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    .line 341
    iget-object v1, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    const-string/jumbo v2, "providerInfo"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ProviderInfo;->getIconResource()I

    move-result v1

    .line 342
    iget-object v3, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v5, "context!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    iget-object v4, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "providerInfo.packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 340
    invoke-direct {v0, v1, v3, v4, p0}, Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getGtsCellVersion()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->gtsCellVersion$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final grantUriPermissions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;)V"
        }
    .end annotation

    .line 307
    new-instance v0, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider;)V

    .line 319
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.android.gts"

    :goto_0
    const-string v1, "callingPackage ?: GTS_CLIENT_PACKAGE"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    check-cast p1, Ljava/lang/Iterable;

    .line 486
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gtscell/data/GtsItem;

    .line 321
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;->invoke(Lcom/samsung/android/gtscell/data/GtsItem;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Lcom/samsung/android/gtscell/data/GtsItem;->getEmbeddedItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    .line 487
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItem;

    .line 323
    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;->invoke(Lcom/samsung/android/gtscell/data/GtsItem;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final revokeUriPermissions(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.gts"

    :goto_0
    const-string v1, "callingPackage ?: GTS_CLIENT_PACKAGE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    check-cast p1, Ljava/lang/Iterable;

    .line 490
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 331
    sget-object v2, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string/jumbo v5, "revokeUriPermissions called. uri="

    invoke-interface {v2, v5, v4}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/ProviderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 85
    iput-object p2, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 86
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must have android.permission.WRITE_SECURE_SETTINGS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 34
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string/jumbo v3, "method"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v3, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "context!!"

    const-string v7, "gts_item_cell"

    const-string v8, ", action="

    const-string v9, "gts_action"

    const-string v10, "ex.getString(EXTRA_TARGE\u2026TEGORY, CATEGORY_DEFAULT)"

    const-string v11, "com.samsung.android.gts.category.DEFAULT"

    const-string/jumbo v12, "target_category"

    const-string v13, "gts_cell_version"

    const/4 v15, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_b

    :sswitch_0
    const-string v4, "get_item"

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v2, :cond_13

    .line 183
    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v15}, Lcom/samsung/android/gtscell/utils/GtsProcessController;->setProcessImportant(Landroid/content/Context;Z)V

    .line 184
    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v9, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "gts_item_keys"

    .line 188
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 189
    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getItem: category="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v5, v8, v9}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v3

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const-string v8, "getItem: itemKeys="

    invoke-interface {v3, v8, v5}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/gtscell/GtsCellProvider;->onGetGtsItemStarted(Ljava/lang/String;Ljava/util/List;)V

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v15

    if-eqz v5, :cond_6

    .line 195
    invoke-interface {v1, v0}, Lcom/samsung/android/gtscell/GtsCellItemProvider;->getGtsItemGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 459
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    .line 35
    invoke-virtual {v8}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getSuppliers()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 461
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 469
    check-cast v11, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    .line 197
    invoke-virtual {v11}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-direct {v1, v11, v4}, Lcom/samsung/android/gtscell/GtsCellProvider;->checkAction(Lcom/samsung/android/gtscell/data/GtsItemSupplier;I)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v15

    goto :goto_3

    :cond_2
    move v12, v6

    :goto_3
    if-eqz v12, :cond_3

    .line 37
    invoke-virtual {v11}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItem()Lcom/samsung/android/gtscell/data/GtsSupplier;

    move-result-object v12

    new-instance v14, Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    invoke-virtual {v11}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v14}, Lcom/samsung/android/gtscell/data/GtsSupplier;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gtscell/data/GtsItem;

    if-eqz v6, :cond_3

    .line 38
    invoke-virtual {v6}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_4

    .line 469
    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 196
    :cond_5
    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v6, 0x0

    goto :goto_1

    .line 201
    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 202
    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onGetGtsItemFinished(Ljava/lang/String;)V

    .line 203
    invoke-direct {v1, v3}, Lcom/samsung/android/gtscell/GtsCellProvider;->grantUriPermissions(Ljava/util/List;)V

    .line 204
    new-instance v2, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfig()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v18

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellProviderInfo()Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    move-result-object v19

    .line 209
    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getPrivateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x20

    const/16 v24, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v20, v3

    .line 204
    invoke-direct/range {v16 .. v24}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsJsonHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-object v2, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "getItem(json):"

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 214
    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellVersion()I

    move-result v0

    invoke-virtual {v2, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :sswitch_1
    const-string v3, "get_done"

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v2, :cond_7

    const-string v3, "gts_cell_uris"

    .line 222
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-direct {v1, v3}, Lcom/samsung/android/gtscell/GtsCellProvider;->revokeUriPermissions(Ljava/util/List;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 224
    :cond_7
    sget-object v3, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/gtscell/utils/GtsProcessController;->setProcessImportant(Landroid/content/Context;Z)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onReleaseProvider()V

    goto/16 :goto_b

    :sswitch_2
    const-string/jumbo v4, "set_item"

    .line 228
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 229
    new-instance v4, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    invoke-direct {v4}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;-><init>()V

    if-eqz v2, :cond_e

    .line 231
    const-class v0, Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "finish_callback"

    .line 232
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/samsung/android/gtscell/RemoteCallback;

    .line 233
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz v19, :cond_d

    .line 236
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v3

    new-array v5, v15, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string/jumbo v6, "setItem(json):"

    invoke-interface {v3, v6, v5}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    sget-object v3, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsJsonHelper;

    const-class v5, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    if-eqz v3, :cond_c

    .line 238
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x2710

    const-string/jumbo v0, "timeout"

    .line 239
    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 240
    new-instance v2, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v18

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellVersion()I

    move-result v20

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 240
    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;-><init>(Lcom/samsung/android/gtscell/data/cell/GtsItemCell;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/RemoteCallback;IJ)V

    .line 248
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onSetGtsItemStarted(Ljava/lang/String;I)V

    .line 432
    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getTimer$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/utils/GtsTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->start()V

    .line 433
    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getCell$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 481
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/gtscell/data/GtsItem;

    .line 434
    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getResultCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    move-result-object v8

    .line 251
    invoke-virtual {v7}, Lcom/samsung/android/gtscell/data/GtsItem;->getFormat()Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsItemFormat;->getFromGts()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;

    .line 254
    invoke-virtual {v7}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v17

    .line 255
    sget-object v18, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->ITEM_MADE_BY_GTS:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    .line 256
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/samsung/android/gtscell/data/GtsItem;->getFormat()Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " was made by gts"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    move-object/from16 v16, v0

    .line 253
    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    invoke-interface {v8, v0}, Lcom/samsung/android/gtscell/ResultCallback;->onResult(Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V

    goto :goto_5

    .line 261
    :cond_9
    :try_start_0
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v0

    invoke-interface {v1, v5, v7, v0, v8}, Lcom/samsung/android/gtscell/GtsCellItemProvider;->setGtsItem(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 263
    sget-object v9, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v9}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    const-string/jumbo v10, "setGtsItem"

    invoke-interface {v9, v0, v10, v11}, Lcom/samsung/android/gtscell/log/GLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    new-instance v9, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;

    .line 266
    invoke-virtual {v7}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v17

    .line 267
    sget-object v18, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->FATAL:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    move-object/from16 v16, v9

    .line 265
    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 264
    invoke-interface {v8, v9}, Lcom/samsung/android/gtscell/ResultCallback;->onResult(Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V

    goto :goto_5

    .line 274
    :cond_a
    invoke-virtual {v1, v5}, Lcom/samsung/android/gtscell/GtsCellProvider;->onSetGtsItemFinished(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->isRespond()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 278
    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->COMPLETE:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    .line 280
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    .line 281
    :cond_c
    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->JSON_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    .line 282
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    .line 284
    :cond_d
    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->URI_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    .line 286
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_7

    .line 287
    :cond_e
    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->EXTRA_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    .line 288
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 289
    :goto_7
    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->getState()Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string/jumbo v3, "setData(GtsResult):"

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v2

    const-string v3, "gts_cell_config"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    invoke-virtual {v4}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->build()Lcom/samsung/android/gtscell/data/result/GtsResult;

    move-result-object v2

    const-string v3, "gts_cell_result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellVersion()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :sswitch_3
    const-string v4, "get_expression"

    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v2, :cond_13

    .line 148
    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, v9, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 151
    sget-object v5, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->Companion:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;

    const-string/jumbo v6, "thumbnail_size"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;->setThumbnailSize(I)V

    const-string v6, "enlargeable_thumbnail_size"

    .line 153
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;->setEnlargeableThumbnailSize(I)V

    .line 154
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExpression: category="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onGetGtsExpressionStarted(Ljava/lang/String;)V

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {v1, v0}, Lcom/samsung/android/gtscell/GtsCellItemProvider;->getGtsItemGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 439
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    .line 159
    invoke-virtual {v5}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getName()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {v5}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getSuppliers()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 441
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 450
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 449
    check-cast v9, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    .line 160
    invoke-direct {v1, v9, v4}, Lcom/samsung/android/gtscell/GtsCellProvider;->checkAction(Lcom/samsung/android/gtscell/data/GtsItemSupplier;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 19
    invoke-virtual {v9}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getExpression()Lcom/samsung/android/gtscell/data/GtsSupplier;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/samsung/android/gtscell/data/GtsSupplier;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    if-eqz v10, :cond_10

    .line 20
    invoke-virtual {v10}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getItemKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_f

    .line 449
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 159
    :cond_11
    invoke-static {v6, v8}, Lcom/samsung/android/gtscell/data/GtsExpressionGroupKt;->of(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/gtscell/data/GtsExpressionGroup;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 163
    :cond_12
    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onGetGtsExpressionFinished(Ljava/lang/String;)V

    .line 165
    new-instance v3, Lcom/samsung/android/gtscell/data/cell/GtsExpressionCell;

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfig()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v27

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellProviderInfo()Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    move-result-object v28

    .line 170
    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getPrivateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x20

    const/16 v33, 0x0

    move-object/from16 v25, v3

    move-object/from16 v26, v0

    move-object/from16 v29, v2

    .line 165
    invoke-direct/range {v25 .. v33}, Lcom/samsung/android/gtscell/data/cell/GtsExpressionCell;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsJsonHelper;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    sget-object v2, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "getExpression(json):"

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gts_expression_cell"

    .line 175
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellVersion()I

    move-result v0

    invoke-virtual {v2, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 297
    :cond_13
    :goto_b
    invoke-super/range {p0 .. p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4c468721 -> :sswitch_3
        0x545ae4d0 -> :sswitch_2
        0x75ca72cb -> :sswitch_1
        0x75ccca5c -> :sswitch_0
    .end sparse-switch
.end method

.method public final delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 304
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;->make(Landroid/content/Context;)Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p0, p1}, Lcom/samsung/android/gtscell/GtsCellItemProvider$DefaultImpls;->getPrivateCategory(Lcom/samsung/android/gtscell/GtsCellItemProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreate()Z
    .locals 4

    .line 90
    sget-object p0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1.2.20"

    aput-object v3, v1, v2

    const-string/jumbo v2, "version"

    invoke-interface {p0, v2, v1}, Lcom/samsung/android/gtscell/log/GLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public onGetGtsExpressionFinished(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onGetGtsExpressionStarted(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onGetGtsItemFinished(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onGetGtsItemStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "itemKeys"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReleaseProvider()V
    .locals 0

    return-void
.end method

.method public onSetGtsItemFinished(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSetGtsItemStarted(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

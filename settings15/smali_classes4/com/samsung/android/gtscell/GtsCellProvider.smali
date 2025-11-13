.class public abstract Lcom/samsung/android/gtscell/GtsCellProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/gtscell/GtsCellItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;,
        Lcom/samsung/android/gtscell/GtsCellProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 K2\u00020\u00012\u00020\u0002:\u0002KLB\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0010H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0016J\u0018\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017J/\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0010\u0010 \u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0019\u0018\u00010!\u00a2\u0006\u0002\u0010\"J\u0008\u0010#\u001a\u00020\u0005H\u0014J\u0008\u0010$\u001a\u00020%H\u0002J\u000e\u0010&\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eJ\u0016\u0010\'\u001a\u00020\u00122\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)H\u0002J\u001a\u0010+\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010,\u001a\u0004\u0018\u00010-J$\u0010+\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017J\u0008\u0010.\u001a\u00020/H\u0017J\u0008\u00100\u001a\u00020/H\u0016J\u0010\u00101\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u0019H\u0016J\u0010\u00103\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u0019H\u0016J\u0010\u00104\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u0019H\u0016J\u001e\u00105\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u00192\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00190)H\u0016J\u0008\u00107\u001a\u00020\u0012H\u0016J\u0010\u00108\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u0019H\u0016J\u0018\u00109\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u00192\u0006\u0010:\u001a\u00020\u000bH\u0016J;\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010\u001d\u001a\u00020\u001e2\u0010\u0010=\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0019\u0018\u00010!2\u0008\u0010>\u001a\u0004\u0018\u00010\u00172\u0008\u0010?\u001a\u0004\u0018\u00010@\u00a2\u0006\u0002\u0010AJM\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010\u001d\u001a\u00020\u001e2\u0010\u0010=\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0019\u0018\u00010!2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0010\u0010 \u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0019\u0018\u00010!2\u0008\u0010B\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0002\u0010CJW\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010\u001d\u001a\u00020\u001e2\u0010\u0010=\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0019\u0018\u00010!2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0010\u0010 \u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0019\u0018\u00010!2\u0008\u0010B\u001a\u0004\u0018\u00010\u00192\u0008\u0010?\u001a\u0004\u0018\u00010@\u00a2\u0006\u0002\u0010DJ\"\u0010E\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017J9\u0010E\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0010\u0010 \u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0019\u0018\u00010!\u00a2\u0006\u0002\u0010FJ\u0014\u0010G\u001a\u00020/*\u00020H2\u0006\u0010I\u001a\u00020\u000bH\u0002J\u0012\u0010J\u001a\u00020\u0012*\u0008\u0012\u0004\u0012\u00020\u001e0)H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/GtsCellProvider;",
        "Landroid/content/ContentProvider;",
        "Lcom/samsung/android/gtscell/GtsCellItemProvider;",
        "()V",
        "config",
        "Lcom/samsung/android/gtscell/data/GtsConfiguration;",
        "getConfig",
        "()Lcom/samsung/android/gtscell/data/GtsConfiguration;",
        "config$delegate",
        "Lkotlin/Lazy;",
        "gtsCellVersion",
        "",
        "getGtsCellVersion",
        "()I",
        "gtsCellVersion$delegate",
        "providerInfo",
        "Landroid/content/pm/ProviderInfo;",
        "attachInfo",
        "",
        "context",
        "Landroid/content/Context;",
        "info",
        "call",
        "Landroid/os/Bundle;",
        "method",
        "",
        "arg",
        "extras",
        "delete",
        "uri",
        "Landroid/net/Uri;",
        "selection",
        "selectionArgs",
        "",
        "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I",
        "getConfiguration",
        "getGtsCellProviderInfo",
        "Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;",
        "getType",
        "grantUriPermissions",
        "gtsItems",
        "",
        "Lcom/samsung/android/gtscell/data/GtsItem;",
        "insert",
        "values",
        "Landroid/content/ContentValues;",
        "isActive",
        "",
        "onCreate",
        "onGetGtsExpressionFinished",
        "category",
        "onGetGtsExpressionStarted",
        "onGetGtsItemFinished",
        "onGetGtsItemStarted",
        "itemKeys",
        "onReleaseProvider",
        "onSetGtsItemFinished",
        "onSetGtsItemStarted",
        "itemCount",
        "query",
        "Landroid/database/Cursor;",
        "projection",
        "queryArgs",
        "cancellationSignal",
        "Landroid/os/CancellationSignal;",
        "(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;",
        "sortOrder",
        "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;",
        "update",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I",
        "checkAction",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
        "action",
        "revokeUriPermissions",
        "Companion",
        "GtsItemSender",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ACTION_GTS_CELL:Ljava/lang/String; = "com.samsung.android.gts.action.GTS_CELL"

.field public static final ACTION_GTS_SETTINGS:Ljava/lang/String; = "com.samsung.android.gts.action.GTS_SETTINGS"

.field public static final CATEGORY_AOD:Ljava/lang/String; = "com.samsung.android.gts.category.AOD"

.field public static final CATEGORY_COVER_SCREEN:Ljava/lang/String; = "com.samsung.android.gts.category.COVER_SCREEN"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "com.samsung.android.gts.category.DEFAULT"

.field public static final CATEGORY_HOME_SCREEN:Ljava/lang/String; = "com.samsung.android.gts.category.HOME_SCREEN"

.field public static final CATEGORY_LOCK_SCREEN:Ljava/lang/String; = "com.samsung.android.gts.category.LOCK_SCREEN"

.field public static final CATEGORY_SETTINGS:Ljava/lang/String; = "com.samsung.android.gts.category.SETTINGS"

.field public static final Companion:Lcom/samsung/android/gtscell/GtsCellProvider$Companion;

.field public static final EXTRA_ENLARGEABLE_THUMBNAIL_SIZE:Ljava/lang/String; = "enlargeable_thumbnail_size"

.field public static final EXTRA_FINISH_CALLBACK:Ljava/lang/String; = "finish_callback"

.field public static final EXTRA_GTS_ACTION:Ljava/lang/String; = "gts_action"

.field public static final EXTRA_GTS_CELL_CONFIG:Ljava/lang/String; = "gts_cell_config"

.field public static final EXTRA_GTS_CELL_RESULT:Ljava/lang/String; = "gts_cell_result"

.field public static final EXTRA_GTS_CELL_URIS:Ljava/lang/String; = "gts_cell_uris"

.field public static final EXTRA_GTS_CELL_VERSION:Ljava/lang/String; = "gts_cell_version"

.field public static final EXTRA_GTS_EXPRESSION_CELL:Ljava/lang/String; = "gts_expression_cell"

.field public static final EXTRA_GTS_ITEM_CELL:Ljava/lang/String; = "gts_item_cell"

.field public static final EXTRA_GTS_ITEM_KEYS:Ljava/lang/String; = "gts_item_keys"

.field public static final EXTRA_TARGET_CATEGORY:Ljava/lang/String; = "target_category"

.field public static final EXTRA_THUMBNAIL_SIZE:Ljava/lang/String; = "thumbnail_size"

.field public static final EXTRA_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final GTS_CLIENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.gts"

.field public static final METADATA_GTS_CELL_VERSION:Ljava/lang/String; = "com.samsung.android.gtscell.VERSION"

.field public static final METADATA_MIN_REVISION:Ljava/lang/String; = "com.samsung.android.gts.MIN_REVISION"

.field public static final METHOD_GET_DONE:Ljava/lang/String; = "get_done"

.field public static final METHOD_GET_EXPRESSION:Ljava/lang/String; = "get_expression"

.field public static final METHOD_GET_ITEM:Ljava/lang/String; = "get_item"

.field public static final METHOD_SET_ITEM:Ljava/lang/String; = "set_item"

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

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/samsung/android/gtscell/GtsCellProvider$config$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$config$2;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->config$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/gtscell/GtsCellProvider$gtsCellVersion$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$gtsCellVersion$2;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->gtsCellVersion$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final checkAction(Lcom/samsung/android/gtscell/data/GtsItemSupplier;I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

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
    .locals 7

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    iget-object v1, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    const-string/jumbo v2, "providerInfo"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/ProviderInfo;->getIconResource()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "context!!"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "providerInfo.packageName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v5, p0}, Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
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

    new-instance v0, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.android.gts"

    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gtscell/data/GtsItem;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;->invoke(Lcom/samsung/android/gtscell/data/GtsItem;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/gtscell/data/GtsItem;->getEmbeddedItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItem;

    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$grantUriPermissions$1;->invoke(Lcom/samsung/android/gtscell/data/GtsItem;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final revokeUriPermissions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.gts"

    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    const-string/jumbo v3, "revokeUriPermissions called. uri="

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/samsung/android/gtscell/GtsCellProvider;->providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must have android.permission.WRITE_SECURE_SETTINGS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "method"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v4

    const-string v5, "call: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "gts_item_cell"

    const-string v7, ", action="

    const-string v8, "gts_action"

    const-string v9, "ex.getString(EXTRA_TARGE\u2026TEGORY, CATEGORY_DEFAULT)"

    const-string v10, "com.samsung.android.gts.category.DEFAULT"

    const-string/jumbo v11, "target_category"

    const-string v12, "context!!"

    const-string v13, "gts_cell_version"

    const/4 v14, 0x1

    const/4 v15, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v4, "get_item"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v14}, Lcom/samsung/android/gtscell/utils/GtsProcessController;->setProcessImportant(Landroid/content/Context;Z)V

    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v8, "gts_item_keys"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getItem: category="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v8, v7, v6}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v3

    const-string v6, "getItem: itemKeys="

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/gtscell/GtsCellProvider;->onGetGtsItemStarted(Ljava/lang/String;Ljava/util/List;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v14

    if-eqz v6, :cond_4

    invoke-interface {v1, v0}, Lcom/samsung/android/gtscell/GtsCellItemProvider;->getGtsItemGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    invoke-virtual {v7}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getSuppliers()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    invoke-virtual {v10}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct {v1, v10, v4}, Lcom/samsung/android/gtscell/GtsCellProvider;->checkAction(Lcom/samsung/android/gtscell/data/GtsItemSupplier;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItem()Lcom/samsung/android/gtscell/data/GtsSupplier;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v12}, Lcom/samsung/android/gtscell/data/GtsSupplier;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/gtscell/data/GtsItem;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object v11, v15

    :goto_3
    if-eqz v11, :cond_1

    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onGetGtsItemFinished(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/samsung/android/gtscell/GtsCellProvider;->grantUriPermissions(Ljava/util/List;)V

    new-instance v2, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfig()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellProviderInfo()Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    move-result-object v19

    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getPrivateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x20

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v20, v3

    invoke-direct/range {v16 .. v24}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsJsonHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    const-string v3, "getItem(json):"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellVersion()I

    move-result v0

    invoke-virtual {v2, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v15

    :sswitch_1
    const-string v3, "get_done"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v2, :cond_6

    const-string v3, "gts_cell_uris"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-direct {v1, v3}, Lcom/samsung/android/gtscell/GtsCellProvider;->revokeUriPermissions(Ljava/util/List;)V

    :cond_6
    sget-object v3, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/gtscell/utils/GtsProcessController;->setProcessImportant(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onReleaseProvider()V

    goto/16 :goto_9

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v15

    :sswitch_2
    const-string/jumbo v4, "set_item"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v4, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    invoke-direct {v4}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;-><init>()V

    if-eqz v2, :cond_c

    const-class v0, Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "finish_callback"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    if-eqz v17, :cond_b

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v3

    const-string/jumbo v5, "setItem(json):"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsJsonHelper;

    const-class v5, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "timeout"

    const-wide/16 v7, 0x2710

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    new-instance v2, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellVersion()I

    move-result v18

    move-object v14, v2

    move-object v15, v3

    invoke-direct/range {v14 .. v20}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;-><init>(Lcom/samsung/android/gtscell/data/cell/GtsItemCell;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/RemoteCallback;IJ)V

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onSetGtsItemStarted(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getTimer$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/utils/GtsTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->start()V

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getCell$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/gtscell/data/GtsItem;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getResultCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    move-result-object v9

    invoke-virtual {v8}, Lcom/samsung/android/gtscell/data/GtsItem;->getFormat()Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsItemFormat;->getFromGts()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;

    invoke-virtual {v8}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->ITEM_MADE_BY_GTS:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/gtscell/data/GtsItem;->getFormat()Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was made by gts"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v0}, Lcom/samsung/android/gtscell/ResultCallback;->onResult(Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V

    goto :goto_4

    :cond_8
    :try_start_0
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v0

    invoke-interface {v1, v5, v8, v0, v9}, Lcom/samsung/android/gtscell/GtsCellItemProvider;->setGtsItem(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v10, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v10}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v10

    const-string/jumbo v11, "setGtsItem"

    new-array v12, v6, [Ljava/lang/Object;

    invoke-interface {v10, v0, v11, v12}, Lcom/samsung/android/gtscell/log/GLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;

    invoke-virtual {v8}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->FATAL:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v14, v10

    invoke-direct/range {v14 .. v20}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v10}, Lcom/samsung/android/gtscell/ResultCallback;->onResult(Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v5}, Lcom/samsung/android/gtscell/GtsCellProvider;->onSetGtsItemFinished(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->isRespond()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->COMPLETE:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->JSON_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->URI_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->EXTRA_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    :cond_d
    :goto_5
    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v0

    invoke-virtual {v4}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->getState()Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "setData(GtsResult):"

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gts_cell_config"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "gts_cell_result"

    invoke-virtual {v4}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->build()Lcom/samsung/android/gtscell/data/result/GtsResult;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellVersion()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :sswitch_3
    const-string v4, "get_expression"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->Companion:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;

    const-string/jumbo v8, "thumbnail_size"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;->setThumbnailSize(I)V

    const-string v8, "enlargeable_thumbnail_size"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;->setEnlargeableThumbnailSize(I)V

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getExpression: category="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onGetGtsExpressionStarted(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Lcom/samsung/android/gtscell/GtsCellItemProvider;->getGtsItemGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    invoke-virtual {v5}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getSuppliers()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    invoke-direct {v1, v9, v4}, Lcom/samsung/android/gtscell/GtsCellProvider;->checkAction(Lcom/samsung/android/gtscell/data/GtsItemSupplier;I)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v9}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getExpression()Lcom/samsung/android/gtscell/data/GtsSupplier;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/samsung/android/gtscell/data/GtsSupplier;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getItemKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    move-object v10, v15

    :goto_8
    if-eqz v10, :cond_e

    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-static {v6, v8}, Lcom/samsung/android/gtscell/data/GtsExpressionGroupKt;->of(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/gtscell/data/GtsExpressionGroup;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onGetGtsExpressionFinished(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/gtscell/data/cell/GtsExpressionCell;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getConfig()Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellProviderInfo()Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    move-result-object v19

    invoke-virtual {v1, v0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getPrivateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x20

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v24}, Lcom/samsung/android/gtscell/data/cell/GtsExpressionCell;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsJsonHelper;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gtscell/utils/GtsJsonHelper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    const-string v3, "getExpression(json):"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gts_expression_cell"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->getGtsCellVersion()I

    move-result v0

    invoke-virtual {v2, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_12
    :goto_9
    invoke-super/range {p0 .. p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

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

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 2

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "context!!"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;->make(Landroid/content/Context;)Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method

.method public getPrivateCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/gtscell/GtsCellItemProvider$DefaultImpls;->getPrivateCategory(Lcom/samsung/android/gtscell/GtsCellItemProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 0

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
    .locals 2

    sget-object p0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    const-string v0, "1.2.20"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/gtscell/log/GLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onGetGtsExpressionFinished(Ljava/lang/String;)V
    .locals 0

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onGetGtsExpressionStarted(Ljava/lang/String;)V
    .locals 0

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onGetGtsItemFinished(Ljava/lang/String;)V
    .locals 0

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onGetGtsItemStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSetGtsItemStarted(Ljava/lang/String;I)V
    .locals 0

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

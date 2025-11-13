.class final Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/WindowInfoTracker$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/window/layout/adapter/WindowBackend;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;

    invoke-direct {v0}, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;-><init>()V

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;->INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/window/layout/adapter/WindowBackend;
    .locals 5

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroidx/window/layout/WindowInfoTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    new-instance v2, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v2, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v1, v0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackend;->Companion:Landroidx/window/layout/adapter/extensions/ExtensionWindowBackend$Companion;

    new-instance v3, Landroidx/window/core/ConsumerAdapter;

    const-string v4, "loader"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v1, v3}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackend$Companion;->newInstance(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)Landroidx/window/layout/adapter/WindowBackend;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    invoke-static {}, Landroidx/window/layout/WindowInfoTracker$Companion;->access$getDEBUG$p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/window/layout/WindowInfoTracker$Companion;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load WindowExtensions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;->invoke()Landroidx/window/layout/adapter/WindowBackend;

    move-result-object p0

    return-object p0
.end method

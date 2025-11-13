.class public final Landroidx/picker/helper/PackageManagerHelperImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final context:Landroid/content/Context;

.field public final pmList:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->pmList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PackageManagerHelperImpl"

    return-object p0
.end method

.method public final getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;
    .locals 3

    iget-object v0, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->pmList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {p1}, Landroidx/reflect/os/SeslUserHandleReflector;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iget-object v2, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-static {v2, p2, p1}, Landroidx/reflect/content/SeslContextReflector;->createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, p0

    goto :goto_1

    :catch_0
    iget-object p0, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    goto :goto_0

    :catch_1
    iget-object p0, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    goto :goto_0

    :catch_2
    iget-object p0, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    goto :goto_0

    :catch_3
    iget-object p0, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    goto :goto_0

    :goto_1
    const-string/jumbo p0, "try {\n                va\u2026kageManager\n            }"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Landroid/content/pm/PackageManager;

    return-object v2
.end method

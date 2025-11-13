.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$filteredList$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $appsData:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

.field public final synthetic $pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$filteredList$1;->$appsData:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$filteredList$1;->$pm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$filteredList$1;->$appsData:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;->APP_SIZE_SKIP_LIST:[Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$filteredList$1;->$appsData:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$filteredList$1;->$pm:Landroid/content/pm/PackageManager;

    const-string v1, "$pm"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "pm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

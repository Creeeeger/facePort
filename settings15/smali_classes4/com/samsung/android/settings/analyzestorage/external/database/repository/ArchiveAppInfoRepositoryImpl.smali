.class public final Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;


# static fields
.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl$Companion;

.field public static volatile instance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;


# instance fields
.field public final context:Landroid/content/Context;

.field public final unusedAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->Companion:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->context:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

    invoke-direct {p1}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->unusedAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

    return-void
.end method


# virtual methods
.method public final getAppInfoList()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->unusedAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;->getUnusedAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "getUnusedAppInfoList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl$getAppInfoList$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl$getAppInfoList$1;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "collect(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

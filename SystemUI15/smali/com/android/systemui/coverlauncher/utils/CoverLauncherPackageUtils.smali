.class public final Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sAppList:Ljava/util/ArrayList;

.field public static final sDimension:Ljava/util/HashMap;


# instance fields
.field public final mAllowedPackageList:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->sDimension:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getGrayFilter()Landroid/graphics/ColorFilter;
    .locals 5

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v4, v2, v3

    const/4 v3, 0x4

    const/high16 v4, 0x42ff0000    # 127.5f

    aput v4, v2, v3

    const/16 v3, 0x9

    aput v4, v2, v3

    const/16 v3, 0xe

    aput v4, v2, v3

    const/16 v3, 0x12

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method


# virtual methods
.method public final getAppListFromDB(Z)Ljava/util/ArrayList;
    .locals 11

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->sAppList:Ljava/util/ArrayList;

    if-nez p1, :cond_5

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->getCoverLauncherEnabledAppList(I)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    new-instance v6, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "CoverLauncherPackageUtils"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->getCoverLauncherEnabledAppList(I)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_4

    new-instance v5, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "CoverLauncherPackageUtils"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;

    invoke-direct {v2, p0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;-><init>(Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    iget-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mAllowedPackageList:Ljava/util/ArrayList;

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    const-string v1, "CoverLauncherPackageUtils"

    const-string v2, "Failed to get allowed package list "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->tryUpdateAppWidget()V

    :goto_3
    sput-object p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->sAppList:Ljava/util/ArrayList;

    :cond_5
    sget-object p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->sAppList:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    new-instance p0, Ljava/util/ArrayList;

    sget-object p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->sAppList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get Application Label "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CoverLauncherPackageUtils"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->tryUpdateAppWidget()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final tryUpdateAppWidget()V
    .locals 4

    sget-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    move-result-object p0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidgetDelayed$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidgetDelayed$1;-><init>(Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;)V

    const/16 p0, 0x1f4

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

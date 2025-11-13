.class public final synthetic Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:[J

.field public final synthetic f$1:Landroid/app/usage/StorageStatsManager;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>([JLandroid/app/usage/StorageStatsManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;->f$0:[J

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;->f$1:Landroid/app/usage/StorageStatsManager;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;->f$0:[J

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;->f$1:Landroid/app/usage/StorageStatsManager;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    check-cast p1, Landroid/os/UserHandle;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    const/4 v4, 0x0

    const-string/jumbo v5, "sUserInfoChecker"

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    invoke-static {v1, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getExternalStorageTotalSize(Landroid/app/usage/StorageStatsManager;Landroid/os/UserHandle;)J

    move-result-wide p1

    aput-wide p1, v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "context"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz v3, :cond_5

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getWorkProfileUserId(Landroid/content/Context;)I

    move-result p0

    if-ne v2, p0, :cond_1

    const/4 p0, 0x1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getExternalStorageTotalSize(Landroid/app/usage/StorageStatsManager;Landroid/os/UserHandle;)J

    move-result-wide p1

    aput-wide p1, v0, p0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getMyUserId()I

    move-result p2

    if-ne p2, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getExternalStorageTotalSize(Landroid/app/usage/StorageStatsManager;Landroid/os/UserHandle;)J

    move-result-wide p0

    const/4 p2, 0x2

    aget-wide v1, v0, p2

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    add-long/2addr p0, v1

    :goto_0
    aput-wide p0, v0, p2

    :goto_1
    return-void

    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

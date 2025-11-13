.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:[J

.field public final synthetic f$3:Landroid/app/usage/StorageStatsManager;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;[JLandroid/app/usage/StorageStatsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;->f$2:[J

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;->f$3:Landroid/app/usage/StorageStatsManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;->f$2:[J

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;->f$3:Landroid/app/usage/StorageStatsManager;

    check-cast p1, Landroid/os/UserHandle;

    check-cast p2, Ljava/lang/Integer;

    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->isCloneProfile(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    const-string/jumbo v5, "sUserInfoChecker"

    if-ne v3, v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v6, "context"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getWorkProfileUserId(Landroid/content/Context;)I

    move-result v1

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v1, 0x4

    if-ne v1, v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_3
    :goto_0
    const/4 p2, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getExternalStorageTotalSize(Landroid/app/usage/StorageStatsManager;Landroid/os/UserHandle;)J

    move-result-wide p0

    aput-wide p0, v2, p2

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_5
    :goto_1
    return-void
.end method

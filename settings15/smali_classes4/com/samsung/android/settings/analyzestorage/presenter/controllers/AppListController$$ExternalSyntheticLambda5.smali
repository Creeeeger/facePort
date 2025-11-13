.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda5;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda5;->f$1:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "TRASH_INTERNAL_CAPACITY"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "TRASH_SDCARD_CAPACITY"

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v2, "TRASH_INTERNAL_APP_CLONE_CAPACITY"

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    add-long v11, v5, v7

    add-long/2addr v11, v9

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "loadListItem()] type : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", size : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v13, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->appTrashInternalCapacity:J

    cmp-long v2, v13, v5

    if-nez v2, :cond_1

    sget-wide v13, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->appTrashExternalSDCapacity:J

    cmp-long v2, v13, v7

    if-nez v2, :cond_1

    sget-wide v13, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->appTrashAppCloneCapacity:J

    cmp-long v2, v13, v9

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sput-wide v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->appTrashInternalCapacity:J

    sput-wide v7, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->appTrashExternalSDCapacity:J

    sput-wide v9, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->appTrashAppCloneCapacity:J

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->isLoadCompleted:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setAppTrashCapacity() ] isLoaded : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " internal trash: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TrashManager"

    invoke-static {v5, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TRASH_APP_DATA_CAPACITY"

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->appDataCapacity:J

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->setLoadingData(Z)V

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "updateAppCapacity() ] bundle is null"

    invoke-static {p0, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->setLoadingData(Z)V

    :goto_2
    return-void
.end method

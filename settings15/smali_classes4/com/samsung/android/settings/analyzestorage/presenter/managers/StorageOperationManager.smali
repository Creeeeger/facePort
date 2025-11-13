.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mOperationList:Ljava/util/HashSet;

.field public final mUpdateListenerSet:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mUpdateListenerSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mOperationList:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final onSuccess(Landroid/content/Context;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mOperationList:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    new-instance p3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;Landroid/content/Context;I)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;II)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final showToast(Landroid/content/Context;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mOperationList:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mOperationList:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isSd(I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    const/4 p0, 0x1

    if-eq p3, p0, :cond_1

    const/4 p0, 0x2

    if-eq p3, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f142d67

    goto :goto_0

    :cond_1
    const p0, 0x7f142d9d

    goto :goto_0

    :cond_2
    const p0, 0x7f142d80

    :goto_0
    const p2, 0x7f14043a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p0, p2, p1, p3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "showToast() ] There is no valid operation for DomainType : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageOperationManager"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final storageOperation(Landroid/content/Context;II)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->sStorageMountInfoList:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;IILcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnWorkThread(Ljava/lang/Runnable;)V

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->sStorageMountInfoList:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p3, v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;IILcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnWorkThread(Ljava/lang/Runnable;)V

    const/16 p0, 0x2294

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mUpdateListenerSet:Ljava/util/HashSet;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    const/16 p0, 0x2295

    :goto_0
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    return-void
.end method

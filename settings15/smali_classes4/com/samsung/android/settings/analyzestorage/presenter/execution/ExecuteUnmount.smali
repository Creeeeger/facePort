.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUnmount;
.super Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onExecute(ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "onExecute() ] mPageInfo.getPath() : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-virtual {p3}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , mPageInfo.domainType :  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p3, p3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string v0, "domainType"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$StorageOperationManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->storageOperation(Landroid/content/Context;II)V

    const/4 p0, 0x0

    return p0
.end method

.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteCancel;
.super Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onExecute(ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;)Z
    .locals 3

    iget p1, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mInstanceId:I

    sget-object p2, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    const-string v0, "."

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Activity is null and instanceId : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity will be finished and instanceId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return p3
.end method

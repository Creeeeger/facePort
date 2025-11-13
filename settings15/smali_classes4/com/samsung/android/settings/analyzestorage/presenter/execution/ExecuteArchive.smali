.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive;
.super Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onExecute(ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;)Z
    .locals 2

    iget-object p0, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mDialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;

    invoke-direct {v1, p2, p0, p3, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->showDialog(Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;)V

    const/4 p0, 0x1

    return p0
.end method

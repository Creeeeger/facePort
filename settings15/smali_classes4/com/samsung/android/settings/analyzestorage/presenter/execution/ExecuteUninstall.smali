.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall;
.super Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onExecute(ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;)Z
    .locals 8

    iget-object v5, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mContext:Landroid/content/Context;

    iget-object v6, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mDialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    if-nez v6, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v7, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;ILandroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->showDialog(Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;)V

    const/4 p0, 0x1

    return p0
.end method

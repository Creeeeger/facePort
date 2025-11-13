.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/CancelMenu;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getParams()Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    iput p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mInstanceId:I

    return-object v0
.end method

.method public final result(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
    .locals 0

    return-void
.end method

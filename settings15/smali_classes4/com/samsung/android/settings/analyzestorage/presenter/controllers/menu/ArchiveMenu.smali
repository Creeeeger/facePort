.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ArchiveMenu;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/UninstallMenu;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getParams()Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/UninstallMenu;->getParams()Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/UninstallMenu;->menuExecute:Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    const/16 v4, 0x2ee

    invoke-virtual {v1, v4, v3, v2}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getDialog(IILcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;)Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mDialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ArchiveMenu$getParams$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ArchiveMenu$getParams$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ArchiveMenu;)V

    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mProgressListener:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;

    return-object v0
.end method

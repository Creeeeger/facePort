.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList;
.super Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getListItemData()Landroidx/lifecycle/MutableLiveData;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public final getListItemTotalSizeData()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mListItemTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getListLoading()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mLoading:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final initLayout()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->initLayout()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList$initLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList$initLayout$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final refresh()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->refresh(Z)V

    :cond_0
    return-void
.end method

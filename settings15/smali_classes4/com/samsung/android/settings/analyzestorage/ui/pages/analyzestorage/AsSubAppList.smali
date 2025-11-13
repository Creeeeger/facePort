.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;
.super Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getListItemData()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListItems:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getListItemTotalSizeData()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getListLoading()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListLoading:Landroidx/lifecycle/MutableLiveData;

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

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList$initLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList$initLayout$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final observeTotalSize()V
    .locals 2

    const/4 v0, 0x4

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->type:I

    if-ne v1, v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->observeTotalSize()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;->getListItemTotalSizeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList$observeTotalSize$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList$observeTotalSize$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->type:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;->refresh()V

    :cond_0
    return-void
.end method

.method public final refresh()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->isLoadCompleted:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->setLoadingData(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->loadListItem(Z)V

    :cond_0
    return-void
.end method
